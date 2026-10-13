let rec fix_spaces (text : string) : string = 
  let rec replace acc s = 
    match String.index_opt s ' ' with
      None -> acc ^ s
    | Some i when i > 2 -> let rem = String.sub s (i + 1) (String.length s - (i + 1)) in replace (acc ^ "_-" ^ (replace "" rem)) rem
    | Some i -> let rem = String.sub s (i + 1) (String.length s - (i + 1)) in replace (acc ^ "_" ^ (replace "" rem)) rem
  in replace "" text

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
