# Name Mangler
#Anna Vosko

@name = "Johanna Jackson"
# Reverse a name to last, first
def reverse_name(name)

  split_name = name.split

  reversed_name_components= split_name.reverse

  #Rejoln the array of name components
  reversed_name_components.join(' ')
end

  def mangle(name)
    reverse_name name
  end

  def mangle_borg(name)
    (reverse_name name) << " Borg"
  end
  
  # mangle name by reversing it or borging it
  def modified_name(name, is_borg)
    if is_borg
      mangle_borg(name)
    else
      mangle(name)
    end
  end

  puts "New name: #{mangle(@name)}"
  puts "New borg name: #{mangle_borg(@name)}"
  puts "New borg name: #{modified_name(@name, true)}"