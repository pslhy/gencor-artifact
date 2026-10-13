let rec is_lower (string : string) : string =
  if(string == 0) then
      string
  else
      match(string.[0]) with
      | c when c >= 'A' and c <= 'Z' -> 'a' + (c - 'A')
      | c when c >= 'a' and c <= 'z' -> c
      | _ -> failwith "not a valid character"
  is_lower (string.substr(1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert the given string to lower case. *)
