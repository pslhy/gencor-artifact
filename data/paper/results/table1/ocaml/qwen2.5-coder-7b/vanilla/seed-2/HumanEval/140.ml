let rec fix_spaces (text : string) : string = 
    let rec helper chars result count =
        match chars with
        | [] -> result
        | '_' :: rest -> 
            if count > 2 then
                helper rest (result ^ "-") (count - 1)
            else
                helper rest (result ^ "_") count
        | char :: rest -> 
            if count > 2 then
                helper rest (result ^ "_") 0
            else
                helper rest (result ^ (if char = ' ' then "_" else string char)) (if char = ' ' then count + 1 else 0)
    in
    helper (List.of_string text) "" 0


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
