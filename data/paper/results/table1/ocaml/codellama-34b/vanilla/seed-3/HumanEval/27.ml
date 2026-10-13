let rec flip_case (string : string) : string =
  if string = "" then ""
  else
    (if Char.is_lowercase string.[0] then Char.uppercase string.[0]
      else Char.lowercase string.[0]) ^ flip_case string.[1..]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     For a given string, flip lowercase characters to uppercase and uppercase to lowercase. *)
(*     >>> flip_case "Hello" *)
(*     "hELLO" *)
