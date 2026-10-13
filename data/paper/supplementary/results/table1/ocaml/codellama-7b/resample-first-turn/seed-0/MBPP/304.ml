let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int =
  if rotations = 0 then
    arr.(index)
  else
    find_Element (Array.of_list (List.nth ranges rotations))
      (List.drop (rotations - 1) ranges)
      (rotations - 1)
      (arr.(index))

let ranges = [
        [0, 1, 2, 3, 4, 5];
        [5, 6, 7, 8, 9, 10];
        [10, 11, 12, 13, 14, 15];
        [15, 16, 17, 18, 19, 20];
    ];

let arr = [0; 1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15];

let result = find_Element arr ranges 2 10;
print_string (result.ToString());


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find element at a given index after number of rotations. *)
