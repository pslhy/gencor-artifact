
let rec valid_date (date : string) : bool = 
    let open Option in
    let is_digit c = c >= '0' && c <= '9' in
    let month, day, year = 
        date 
        |> String.split_on_char '-' 
        |> List.map (fun s -> 
            if String.length s = 2 && List.for_all is_digit (String.to_seq s) 
            then Some (int_of_string s) 
            else None) in
    match (month, day, year) with
    | Some(m), Some(d), Some(y) when m >= 1 && m <= 12 && d >= 1 && d <= 31 && y >= 0 ->
        (match m with
        | 2 when d <= 29 -> true
        | 4 | 6 | 9 | 11 when d <= 30 -> true
        | _ -> true)
    | _ -> false

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
