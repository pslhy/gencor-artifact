let rec flip_case (string : string) : string =
  match string with
  | [] -> []
  | h :: t ->
    match h with
    | 'a'..'z' -> Char.chr (Char.code h - Char.code ' ' - 32) :: flip_case t
    | _ -> h :: flip_case t
;;

let flip_case string = String.init (String.length string) (fun i -> flip_case.[i])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     For a given string, flip lowercase characters to uppercase and uppercase to lowercase. *)
(*     >>> flip_case "Hello" *)
(*     "hELLO" *)
