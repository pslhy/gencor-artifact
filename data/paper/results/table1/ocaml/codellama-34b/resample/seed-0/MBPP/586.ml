(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to split a list at the nth eelment and add the first part to the end. *)
let rec split_Arr (l : int list) (n : int) : int list =
    if l = [] || n = 0 then [] else
    let (l1, l2) = split_Arr l (n - 1)
    h :: (l2 @ l1)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec split_Arr (l : int list) (n : int) : int list =
   if l = [] || n = 0 then
      []
   else
      let h :: t = l in
      if n = 1 then
         h :: []
      else
         let (l1, l2) = split_Arr t (n - 1) in
         h :: (l2 @ l1)

