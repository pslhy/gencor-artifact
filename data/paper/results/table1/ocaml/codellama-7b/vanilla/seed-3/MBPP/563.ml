let rec extract_values (text : string) : string list =
  if String.length text = 0 then
    []
  else if String.get text 0 = '"' then
    let rec extract acc i =
      if i = String.length text - 1 then
        acc
      else
        extract (acc @ [String.sub text i (1 + String.index_from text (i + 1) '"' - i)]) (i + 1)
    in
    extract [] 1
  else
    extract_values (String.sub text 1 (String.length text - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract values between quotation marks from a string. *)
