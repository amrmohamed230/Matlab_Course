Name = {'Amr'; 'Mohamed'; 'Yousef'};
Age = [25; 53; 70];
Weight = [80; 90; 93];
T=table(Age, Weight,'RowNames',Name) % RowNames converts the specific array into a row data
T(3, 'Age')
T(:,'Age')
T('Amr',:)
T('Amr','Weight')