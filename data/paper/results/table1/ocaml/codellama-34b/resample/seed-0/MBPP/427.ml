(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format. *)
let rec change_date_format (dt : string) : string =
    let year = dt.[0] in
    let month = dt.[1] in
    let day = dt.[2] in
    let month_str =
        match month with
        | "01" -> "January"
        | "02" -> "February"
        | "03" -> "March"
        | "04" -> "April"
        | "05" -> "May"
        | "06" -> "June"
        | "07" -> "July"
        | "08" -> "August"
        | "09" -> "September"
        | "10" -> "October"
        | "11" -> "November"
        | "12" -> "December"
        | _ -> failwith "Invalid month"
    in
    Printf.sprintf "%s %s, %s" day month_str year

