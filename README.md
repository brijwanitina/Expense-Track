EXPENSE TRACKER
FEATURES:
1. Category wise expenses
2. Dashboard with charts:
   A. Category wise
   B. Monthly
   C. Yearly
   D. Etc
3. User preference categories
4. Authentication
5. Authorization
6. Manage income and expenses both
7. Budgeting(optional)
8. CRUD of expenses
9. CRUD of categories
10. Search functionality
11. Bulk upload
12. Download report table
13. Download report chart
14. Forgot pwd mechanism(email.otp)
15. Cron job scheduler for mailing monthly/weekly reports to user(add proper summary in mail)
16. Icon image url for categories


DATABASE

User:
Id,name,email,password,phone,metadata(active_yn,created_at,updated_at)
Categories:
Id,name,user_id,description,metadata,transactionType
Expense:
Id,usr_id,category_id,description,dateoftransaction,notes,amount,metadata




