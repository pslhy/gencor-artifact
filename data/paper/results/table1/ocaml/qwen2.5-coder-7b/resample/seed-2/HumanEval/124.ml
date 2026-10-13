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
    let open Option in
    let* _ = 
        if date = "" then None
        else Some date in
    let* month, rest = 
        try 
            let month, rest = String.split_on_char '-' date in 
            Some (int_of_string month, rest)
        with Invalid_argument _ -> None in
    let* day, year = 
        try 
            let day, year = String.split_on_char '-' rest in 
            Some (int_of_string day, int_of_string year)
        with Invalid_argument _ -> None in
    if not (month >= 1 && month <= 12) || not (day >= 1 && day <= 31) || not (year >= 1) then None
    else if (month = 4 || month = 6 || month = 9 || month = 11) && day > 30 then None
    else if month = 2 && day > 29 then None
    else Some true

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:5: Unbound value "( let* )" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec valid_date (date : string) : bool = 
    let open Option in
    let* _ = 
        if date = "" then None
        else Some date in
    let* month, rest = 
        try 
            let month, rest = String.split_on_char '-' date in 
            Some (int_of_string month, rest)
        with Invalid_argument _ -> None in
    let* day, year = 
        try 
            let day, year = String.split_on_char '-' rest in 
            Some (int_of_string day, int_of_string year)
        with Invalid_argument _ -> None in
    if not (month >= 1 && month <= 12) || not (day >= 1 && day <= 31) || not (year >= 1) then None
    else if (month = 4 || month = 6 || month = 9 || month = 11) && day > 30 then None
    else if month = 2 && day > 29 then None
    else Some true

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:5: Unbound value "( let* )" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec valid_date (date : string) : bool = 
    if date = "" then false
    else 
        let month, rest = String.split_on_char '-' date in
        match month with
        | month when (month < "01" || month > "12") -> false
        | _ -> 
            let day, year = String.split_on_char '-' rest in
            match day with
            | day when (day < "01" || day > "31") -> false
            | _ -> 
                match year with
                | year when (year < "0001") -> false
                | _ -> 
                    if (month = "04" || month = "06" || month = "09" || month = "11") 
                    && (int_of_string day > 30) then false
                    elif month = "02" && (int_of_string day > 29) then false
                    else true

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:17:26: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec valid_date (date : string) : bool = 
    if date = "" then false
    else 
        let month, rest = String.split_on_char '-' date in
        match int_of_string month with
        | month when (month < 1 || month > 12) -> false
        | _ -> 
            let day, rest = String.split_on_char '-' rest in
            match int_of_string day with
            | day when (day < 1 || day > 31) -> false
            | _ -> 
                let year = String.split_on_char '-' rest in
                match int_of_string (List.hd year) with
                | year when (year < 1) -> false
                | _ -> 
                    if (month = 4 || month = 6 || month = 9 || month = 11) 
                    && (int_of_string day > 30) then false
                    elif month = 2 && (int_of_string day > 29) then false
                    else true

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:18:26: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec valid_date (date : string) : bool = 
    if date = "" then false
    else 
        let month, rest = String.split_on_char '-' date in
        match int_of_string month with
        | month when (month < 1 || month > 12) -> false
        | _ -> 
            let day, year = String.split_on_char '-' rest in
            match int_of_string day with
            | day when (day < 1 || day > 31) -> false
            | _ -> 
                match int_of_string year with
                | year when (year < 1) -> false
                | _ -> 
                    if (month = 4 || month = 6 || month = 9 || month = 11) 
                    && (int_of_string day > 30) then false
                    elif month = 2 && (int_of_string day > 29) then false
                    else true

