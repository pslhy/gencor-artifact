
let rec change_date_format (dt : string) : string = 
    let open String in
    dt
    |> String.split_on_char '-'
    |> List.map (String.make 2 '0')
    |> String.concat ""
    |> fun x -> x

let _ = change_date_format "2023-07-29"

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format. *)
