
1. SELECT COALESCE(NULL, 'Hello', 'World'); 
-- COALESCE(expression1, expression2, expression3, ...)
-- COALESCE ဆိုတာ SQL function တစ်ခုဖြစ်ပြီး NULL values ကို handle ဖို့အတွက်သုံးပါတယ်။
-- ဒီ function က NULL မဟုတ်တဲ့ ပထမဆုံး value ကို return ပြန်ပေးပါတယ်။