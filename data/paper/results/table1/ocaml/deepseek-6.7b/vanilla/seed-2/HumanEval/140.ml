let rec fix_spaces (text : string) : string =
  let len = String.length text in
  if len < 3 then
    String.map (fun c -> if c = ' ' then '_' else c) text
  else
    let s = fix_spaces (String.sub text 3 (len - 3)) in
    if String.sub text 0 2 = "  " then
      "_" ^ s
    else
      (if String.sub text 0 1 = " " then "_" else "") ^ String.sub text 0 1 ^ s



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
