(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     You have to write a function which validates a given date string and *)
(*     returns true if the date is valid otherwise false. *)
(*     The date is valid if all of the following rules are satisfied: *)
(*     1. The date string is not empty. *)
(*     2. The number of days is not less than 1 or higher than 31 days for months 1,3,5,7,8,10,12. And the number of days is not less than 1 or higher than 30 days for months 4,6,9,11. And, the number of days is not less than 1 or higher than 29 for the month 2. *)
(*     3. The months should not be less than 1 or higher than 12. *)
(*     4. The date should be in the format: mm-dd-yyyy *)
(*     >>> valid_date "03-11-2000" *)
(*     true *)
(*     >>> valid_date "15-01-2012" *)
(*     false *)
(*     >>> valid_date "04-0-2040" *)
(*     false *)
(*     >>> valid_date "06-04-2020" *)
(*     true *)
(*     >>> valid_date "06/04/2020" *)
(*     false *)
let rec valid_date (date : string) : bool = 
    (* Check if the date string is empty *)
    if (date = "") then 
        false 
    (* Get the month, day, and year parts of the date string *)
    else 
        let month, day, year = get_parts date in 
        (* Check if the month is in the valid range 1-12 *) 
        if (month < 1 || month > 12) then 
            false 
        (* Check if the day is in the valid range *)
        else if (day < 1 || day > 31) then 
            false 
        else if (month = 2 && day > 29) then 
            false 
        else if (List.memo month [1;3;5;7;8;10;12] && (day > 31) || List.memo month [4;6;9;11] && (day > 30)) then 
            false 
      ) 

(* Get the parts of the date string *)
and get_parts (date : string) : int * int * int = 
    let parts = String.split_on_char '-' date in 
    if (List.length parts <> 3) then 
        raise (Invalid_argument "date should be in the format mm-dd-yyyy") 
    else 
        let month = int_of_string (List.nth parts 0) in 
        let day = int_of_string (List.nth parts 1) in 
        let year = int_of_string (List.nth parts 2) in 
        (month, day, year) 

(* Validate the date string by calling the above function *)
let () = 
    match String.split_on_char ' ' "" with 
    | [date] -> if valid_date date then 
            print_string "Date is valid" 
        else 
            print_string "Date is not valid" 
    | _ -> raise (Invalid_argument "input should be a single string") 

(* Get the parts of the date string and print the result *)
let () = 
    let month, day, year = get_parts "11-14-2000" in 
    print_string (month + " " + day + " " + year) 

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:18:7: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec valid_date (date : string) : bool =
  (* Check if the date is in the correct format. *)
  if String.length date <> 10 then
    false
  else
    (* Split the date into its constituent parts. *)
    let month, day, year =
      String.mapi
        (fun idx x ->
           if idx = 1 || idx = 3 || idx = 5 then
             String.make 2 x
           else
             String.make 1 x)
        date
    in
    (* Check if the month is a valid month. *)
    if
      match month with
      | "01" | "03" | "05" | "07" | "08" | "10" | "12" -> true
      | _ -> false
    then
      (* Check if the day is a valid day for the month. *)
      if
        match day with
        | "01" | "02" | "03" | "04" | "05" | "06" | "07" | "08" | "09" | "10" | "11" | "12"
        | "13" | "14" | "15" | "16" | "17" | "18" | "19" | "20" | "21" | "22" | "23" | "24"
        | "25" | "26" | "27" | "28" | "29" | "30" | "31" -> true
        | _ -> false
      then
        (* Check if the year is a valid year. *)
        if
          match year with
          | "00" | "01" | "02" | "03" | "04" | "05" | "06" | "07" | "08" | "09" | "10" | "11"
          | "12" | "13" | "14" | "15" | "16" | "17" | "18" | "19" | "20" | "21" | "22" | "23"
          | "24" | "25" | "26" | "27" | "28" | "29" | "30" | "31" | "32" | "33" | "34" | "35"
          | "36" | "37" | "38" | "39" | "40" | "41" | "42" | "43" | "44" | "45" | "46" | "47"
          | "48" | "49" | "50" | "51" | "52" | "53" | "54" | "55" | "56" | "57" | "58" | "59"
          | "60" | "61" | "62" | "63" | "64" | "65" | "66" | "67" | "68" | "69" | "70" | "71"
          | "72" | "73" | "74" | "75" | "76" | "77" | "78" | "79" | "80" | "81" | "82" | "83"
          | "84" | "85" | "86" | "87" | "88" | "89" | "90" | "91" | "92" | "93" | "94" | "95"
          | "96" | "97" | "98" | "99" -> true
          | _ -> false
        then
          true
        else
          false
      else
        false
    else
      false

