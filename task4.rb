# Написать рекурсивный метод для поиска значения ключа key9 в хеше

class Task4
  def nested_hash_value(obj,key)
    obj.each do |k, v|
      if v.is_a?(Hash)
        nested_hash_value(v, key)
      elsif k == key.to_sym
        puts v.inspect
      end
    end
  end
end

hash = { key1: {}, key2: {}, key3: { key4: 'str', key5: 'str2', key6: { key7: { key8: 1, key9: [2]} } }}
Task4.new.nested_hash_value(hash, :key9)
