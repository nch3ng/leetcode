class Solution:
    def mostCommonWord(self, paragraph, banned):
        """
        :type paragraph: str
        :type banned: List[str]
        :rtype: str
        """
        words = []
        current_index = 0
        word_hash = {}
        max_count=0
        max_count_word=''

        for index,c in enumerate(paragraph):
            if c in '!?\',;. ':
                if current_index != index:
                    words.append(paragraph.lower()[current_index:index])
                current_index = index+1
            
        if index - current_index > 1: 
            words.append(paragraph.lower()[current_index:index+1])

        for word in words:
            if word not in banned:
                if word not in word_hash:
                    word_hash[word] = 1
                    if word_hash[word] >= max_count:
                        max_count_word = word
                else:
                    word_hash[word] = word_hash[word] + 1
                    if word_hash[word] > max_count:
                        max_count = word_hash[word]
                        max_count_word = word
    
        return max_count_word