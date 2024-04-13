# @param {String} begin_word
# @param {String} end_word
# @param {String[]} word_list
# @return {Integer}
def ladder_length(begin_word, end_word, word_list)
  @wordid = {}
  @edge = {}
  @nodenum = 0

  for word in word_list
    addedge(word)
  end

  addedge(begin_word)
  unless @wordid.include?(end_word)
    return 0
  end

  dis = Array.new(@nodenum, 1.0 / 0.0)
  beginid, endid = @wordid[begin_word], @wordid[end_word]
  dis[beginid] = 0

  que = [beginid]
  while que.length > 0
    x = que.shift
    if x == endid
      return dis[endid] / 2 + 1
    end
    for it in @edge[x]
      if dis[it].to_f.infinite?
        dis[it] = dis[x] + 1
        que.push(it)
      end
    end
  end
  0
end

def addword(word)
  unless @wordid.include?(word)
    @wordid[word] = @nodenum
    @nodenum += 1
  end
end

def addedge(word)
  addword(word)
  id1 = @wordid[word]
  chars = word.each_char.to_a
  for i in 0...chars.length
    tmp = chars[i]
    chars[i] = "*"
    newword = chars.join
    addword(newword)
    id2 = @wordid[newword]
    if @edge.has_key?(id1)
      @edge[id1].push(id2)
    else
      @edge[id1] = [id2]
    end
    if @edge.has_key?(id2)
      @edge[id2].push(id1)
    else
      @edge[id2] = [id1]
    end
    chars[i] = tmp
  end
end
