class BinarySearchStrategy
  def detect(original, comparison)
    binary_search(original.sort!, comparison.sort!)
  end

  # 最初これでやったが遅かった。結局ループ回してるからO(n)になってる。
  # def detect(original, comparison)
  #   original.sort!
  #   comparison.sort!
  #   original.each do |value|
  #     return value if value !=  comparison.bsearch {|x| x >= value }
  #   end
  # end

  private

  def binary_search(original, comparison)
    # 再起的に呼び出していき、最終的に二つまで絞った時
    if original.size == 2
      # 元の配列の最初の要素が比較対象の配列の最初の要素と同じ場合は最後の要素が答え
      # [1, 2]
      # [1, 3]
      if original.first == comparison.first
        return original.last
      else
        # [1, 2]
        # [2, 3]
        return original.first
      end
    end

    center = original.size / 2
    if original[center - 1] == comparison[center - 1]
      # 後ろに正解があるはず
      binary_search(original[center..-1], comparison[center..-1])
    else
      # 前に正解があるはず
      binary_search(original[0..center], comparison[0..center])
    end
  end
end
