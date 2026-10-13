
let rec interleave_lists (list1 : int list) (list2 : int list) (list3 : int list) : int list =
  match list1, list2, list3 with
  | (x::xs), (y::ys), (z::zs) -> (x::y::z::xs) @ (interleave_lists xs ys zs)
  | [], [], [] -> []
  | _ -> failwith "Lists must be of same length" in

let test_data =
  [[1; 2; 3]; [4; 5; 6]; [7; 8; 9]];

List.iter (fun (l1, l2, l3, expected) ->
             let actual = interleave_lists l1 l2 l3 in
             assert (actual = expected)
           )
           (List.map2 (fun l1 l2 -> (l1, l2, l1 @ l2, l2))
                       (List.rev (List.tl (List.tl (List.hd (List.tl (List.tl (List.hd (List.tl (List.tl (List.hd (List.hd (List.tl (List.tl (List.hd (List.hd (List.tl (List.tl (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.tl (List.tl (List.tl (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.tl (List.tl (List.tl (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.tl (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.tl (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.tl (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (List.hd (

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to interleave 3 lists of the same length into a single flat list. *)
