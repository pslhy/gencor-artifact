let rec fix_spaces (text : string) : string =
  let len = String.length text in
  if len = 0 then text
  else if String.get text 0 = ' ' then
    if len = 1 then "_"
    else if String.get text 1 = ' ' then "_-" ^ (fix_spaces (String.sub text 2 (len - 2)))
    else "_" ^ (fix_spaces (String.sub text 1 (len - 1)))
  else String.make 1 (String.get text 0) ^ (fix_spaces (String.sub text 1 (len - 1)))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a string text, replace all spaces in it with underscores, *)
(*     and if a string has more than 2 consecutive spaces, *)
(*     then replace all consecutive spaces with - *)
(*     >>> fix_spaces " Example" *)
(*     "Example" *)
(*     >>> fix_spaces " Example 1" *)
(*     "Example_1" *)
(*     >>> fix_spaces " Example 2" *)
(*     "_Example_2" *)
(*     >>> fix_spaces " Example 3" *)
(*     "_Example-3" *)
