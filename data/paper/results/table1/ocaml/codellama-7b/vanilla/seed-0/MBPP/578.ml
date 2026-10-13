let rec interleave_lists (list1 : int list) (list2 : int list) (list3 : int list) : int list =
  match (list1, list2, list3) with
  | (l1, l2, l3) when List.length l1 = 0 &&
                        List.length l2 = 0 &&
                        List.length l3 = 0 -> []
  | (l1, l2, l3) -> List.nth l1 0 :: (List.nth l2 0) :: (List.nth l3 0) :: (interleave_lists (List.tl l1) (List.tl l2) (List.tl l3))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to interleave 3 lists of the same length into a single flat list. *)
