let rec count_samepair (list1 : int list) (list2 : int list) (list3 : int list) : int =
  match list1, list2, list3 with
  | [], _, _ -> 0
  | _, [], _ -> 0
  | _, _, [] -> 0
  | x1 :: xs1, x2 :: xs2, x3 :: xs3 ->
    if x1 = x2 && x1 = x3 then
      1 + count_samepair xs1 xs2 xs3
    else
      0 + count_samepair xs1 xs2 xs3

let count_samepair list1 list2 list3 =
  count_samepair list1 list2 list3

let main () =
  let list1 = [1; 2; 3; 4; 5] in
  let list2 = [2; 3; 4; 5; 6] in
  let list3 = [4; 5; 6; 7; 8] in
  Printf.printf "Number of same items in the same position: %d\n" (count_samepair list1 list2 list3)

let () = main ()


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count number items that are identical in the same position of three given lists. *)
