let rec fix_spaces (text : string) : string =
  match text with
  | "" -> ""
  | ' ' :: text -> "_" ^ fix_spaces text
  | _ :: text -> String.sub text 0 (String.length text - 1) ^ " " ^ fix_spaces (String.sub text (String.length text - 1) (String.length text - 1))
  | "  " :: text -> "-" ^ fix_spaces (String.sub text 1 (String.length text - 1))
  | s when String.length s >= 3 && (List.for_all (fun c -> c = ' ') s) -> fix_spaces s


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
