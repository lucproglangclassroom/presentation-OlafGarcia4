with Ada.Text_IO; use Ada.Text_IO;
procedure Day_per_Month is
   type Day_Duration is range 1 .. 31;
   type Months is (Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec);

   type My_Int_Array is array (Months) of Day_Duration;

   Tab : constant My_Int_Array := (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
   --  Maps months to number of days

begin
   for M in Months loop
      Put_Line
        (Months'Image (M) & " has "
         & Day_Duration'Image (Tab (M))
         & " days.");
       -- if M = 28 then
         --end if;
   end loop;

end Day_per_Month;


