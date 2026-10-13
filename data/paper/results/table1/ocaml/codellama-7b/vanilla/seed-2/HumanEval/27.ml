let rec flip_case (string : string) : string =
  match string with
  | [] -> []
  | c :: cs when Char.is_upper c ->
    let upper_to_lower = Char.lowercase c in
    upper_to_lower :: flip_case cs
  | c :: cs when Char.is_lower c ->
    let lower_to_upper = Char.uppercase c in
    lower_to_upper :: flip_case cs
  | _ :: _ -> failwith "Unexpected character"

let () =
  let input = "Hello" in
  let output = flip_case input in
  print_endline output


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     For a given string, flip lowercase characters to uppercase and uppercase to lowercase. *)
(*     >>> flip_case "Hello" *)
(*     "hELLO" *)
