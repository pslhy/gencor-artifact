let rec fix_spaces (text : string) : string = 
  let rec helper (text : string) (count : int) (result : string) =
    if text = "" then
      if count > 2 then result ^ "-" else result
    else
      let char = text.[0] in
      if char = ' ' then
        helper (String.sub text 1 (String.length text - 1)) (count + 1) result
      else
        if count > 2 then
          helper (String.sub text 1 (String.length text - 1)) 0 (result ^ "-" ^ Char.escaped char)
        else
          helper (String.sub text 1 (String.length text - 1)) 0 (result ^ Char.escaped char)
  in
  helper text 0 ""

(* Test cases *)
let _ = assert (fix_spaces " Example" = "Example")
let _ = assert (fix_spaces " Example 1" = "Example_1")
let _ = assert (fix_spaces " Example 2" = "_Example_2")
let _ = assert (fix_spaces " Example 3" = "_Example-3")


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
