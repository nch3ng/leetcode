class Solution(object):
    def partitionLabels(self, S):
        last = {c: i for i, c in enumerate(S)}
        parts = []
        anchor = 0
        partition_last = 0
        for i,c in enumerate(S):
            if last[c] > partition_last:
                partition_last = last[c]
            if i == partition_last:
                parts.append(partition_last+1-anchor)
                partition_last += 1
                anchor = partition_last

        return parts