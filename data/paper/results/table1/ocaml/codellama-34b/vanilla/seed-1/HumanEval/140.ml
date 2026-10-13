let rec fix_spaces (text : string) : string =
    let rec loop (acc : string) (spaces : int) (i : int) : string =
        if i < 0 then
            acc
        else if text.[i] = ' ' then
            if spaces = 0 then
                loop (acc ^ " ") 1 (i - 1)
            else if spaces = 1 then
                loop (acc ^ "-") 0 (i - 1)
            else
                loop acc (spaces + 1) (i - 1)
        else if spaces > 2 then
            loop (acc ^ "-") 0 (i - 1)
        else
            loop (acc ^ (String.make 1 text.[i])) 0 (i - 1)
    in
    loop "" 0 (String.length text - 1)


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
