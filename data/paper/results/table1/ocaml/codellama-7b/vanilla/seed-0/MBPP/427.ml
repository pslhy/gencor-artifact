let rec change_date_format (dt : string) : string =
  match String.split_on_char '-' dt with
  | [d; m; y] ->
    if String.length y <> 4
    then change_date_format dt
    else
      let y_in_dd_mm_yyyy =
        [d; m; String.sub y 2 2] |> List.map (fun s -> if s.length < 2 then "0" ^ s else s) |> String.concat "-"
      in
      y_in_dd_mm_yyyy
  | _ -> raise (Invalid_argument "Invalid date format")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format. *)
