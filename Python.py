# -*- coding: utf-8 -*-
"""
@author: Besher
"""
import pandas as pd

#First approach
df = pd.read_csv('Data Science_Intern_Challenge.csv')
order_amount_mode = df['order_amount'].mode()[0]
print ('Mode for order_amount : ' + str(order_amount_mode))


#Second approach 
df = pd.read_csv('Data Science_Intern_Challenge.csv')
newdf = df[(df['total_items'] < 50)]
order_amount_median= df['order_amount'].median()
print ('Median for order_amount : ' + str(order_amount_median))


