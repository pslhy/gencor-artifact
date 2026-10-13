let rec fix_spaces (text : string) : string =
  match text with
  | "" -> ""
  | _ ->
    let replace_spaces s = String.concat "_" (String.split_on_char ' ' s) in
    let replace_consecutive_spaces s =
      let rec aux s acc =
        match s with
        | "" -> acc
        | _ ->
          match s with
          | _ * 2 -> s
          | _ * 3 -> aux (String.sub s 2 (String.length s - 2)) (acc ^ " - ")
          | _ -> aux (String.sub s 1 (String.length s - 1)) (acc ^ " ")
      in
      aux s ""
    in
    replace_consecutive_spaces (replace_spaces text)


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
