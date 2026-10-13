let rec flip_case (string : string) : string =
  let len = String.length string in
  let rec loop i acc =
    if i = len then acc
    else (
      let char = String.get string i in
      let flipped = if Char.is_lowercase char then Char.uppercase_ascii char
                    else Char.lowercase_ascii char in
      loop (i + 1) (acc ^ String.make 1 flipped)
    )
  in
  loop 0 ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     For a given string, flip lowercase characters to uppercase and uppercase to lowercase. *)
(*     >>> flip_case "Hello" *)
(*     "hELLO" *)
