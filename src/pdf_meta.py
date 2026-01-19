import sys

def patch_producer(file_path, new_prod):
    with open(file_path, 'rb') as f:
        data = f.read()
    
    # Ghostscript 10 writes: /Producer(GPL Ghostscript 10.02.1)
    # We look for /Producer( and replace until )
    search_str = b'/Producer'
    idx = data.find(search_str)
    
    if idx == -1: return False
    
    start_paren = data.find(b'(', idx)
    end_paren = data.find(b')', start_paren)
    
    if start_paren != -1 and end_paren != -1:
        # We replace the content inside parentheses
        # To be safe and not break offsets, we stay within the same length or pad
        old_len = end_paren - start_paren - 1
        new_prod_bytes = new_prod.encode('ascii', 'ignore')
        
        # Pad or truncate
        if len(new_prod_bytes) > old_len:
            new_content = new_prod_bytes[:old_len]
        else:
            new_content = new_prod_bytes.ljust(old_len)
            
        new_data = data[:start_paren+1] + new_content + data[end_paren:]
        
        with open(file_path, 'wb') as f:
            f.write(new_data)
        return True
    return False

if __name__ == "__main__":
    if len(sys.argv) > 2:
        patch_producer(sys.argv[1], sys.argv[2])