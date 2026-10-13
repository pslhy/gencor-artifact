let rec flip_case (string : string) : string =
  let len = String.length string in
  if len = 0 then ""
  else (String.make 1 (if (String.get string 0) >= 'a' && 
                         (String.get string 0) <= 'z'
                        then Char.uppercase_ascii (String.get string 0)
                        else Char.lowercase_ascii (String.get string 0)) ^ flip_case (String.sub string 1 (len - 1)))
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     For a given string, flip lowercase characters to uppercase and uppercase to lowercase. *)
(*     >>> flip_case "Hello" *)
(*     "hELLO" *)
