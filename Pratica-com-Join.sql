--Questão 1 ---
SELECT users.id,users.name,cities.name as city FROM users JOIN cities ON cities.id=users."cityId" WHERE cities.name='Rio de Janeiro';

--Questão 2 ---
SELECT t.id,u1.name as writer,u2.name as recipient,t.message FROM testimonials t JOIN users u1 ON t."writerId"=u1.id JOIN users u2 ON t."recipientId"=u2.id;

--Questão 3 ---
SELECT users.id,users.name,courses.name as course,schools.name as school,educations."endDate" FROM users JOIN educations ON educations."userId"=users.id JOIN courses ON educations."courseId"=courses.id JOIN schools ON educations."schoolId"=schools.id WHERE users.id=30 AND educations.status='finished';

--Questão 4 ---
SELECT users.id,users.name,roles.name as role,companies.name as company,experiences."startDate" FROM users JOIN experiences ON experiences."userId"=users.id JOIN roles ON experiences."roleId"=roles.id JOIN companies ON experiences."companyId"=companies.id WHERE users.id=50 AND experiences."endDate" IS NULL;


--Bônus ---
SELECT schools.id,schools.name as school,courses.name as course,companies.name as company,roles.name as role FROM schools JOIN educations ON educations."schoolId"=schools.id JOIN courses ON educations."courseId"=courses.id JOIN users ON educations."userId"=users.id JOIN applicants ON applicants."userId"=users.id JOIN jobs ON applicants."jobId"=jobs.id JOIN companies ON jobs."companyId"=companies.id JOIN roles ON jobs."roleId"=roles.id WHERE companies.id=10 AND roles.name='Software Engineer' AND jobs.active=true;

