let rec fix_spaces (text : string) : string =
  if String.length text <= 1
  then text
  else if String.get text 0 = ' '
  then '-' ^ fix_spaces (String.sub text 1 (String.length text - 1))
  else
    let rec concat_dashes (text : string) (count : int) : string =
      if count < 2 then
        text
      else
        concat_dashes (String.sub text 0 (count - 1) ^ "-" ^ String.sub text (count - 1) (String.length text - count + 1)) (count - 1)
    in
      concat_dashes (text ^ "_" ^ fix_spaces (String.sub text 1 (String.length text - 1)))


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
