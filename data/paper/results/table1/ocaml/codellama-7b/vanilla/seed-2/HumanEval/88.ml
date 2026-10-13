let rec sort_array (array : int list) : int list =
  match array with
  | [] -> []
  | _ ->
    let sum = List.fold_left (+) 0 array in
    if sum mod 2 = 0 then
      List.rev (List.sort compare array)
    else
      List.sort compare array

let rec compare (a : int) (b : int) =
  if a > b then
    1
  else if a < b then
    -1
  else
    0

let rec sort_array' (array : int list) : int list =
  match array with
  | [] -> []
  | first :: tail ->
    let sorted_tail = sort_array' tail in
    if first < 0 then
      sorted_tail
    else
      let insert_at (i : int) : int -> int list -> int list =
        fun x lst ->
          let rec insert (i : int) (x : int) (lst : int list) : int list =
            match lst with
            | [] -> [x]
            | h :: t ->
              if i = 0 then
                x :: h :: t
              else
                h :: insert (i - 1) x t
          in
          insert i x lst
      in
      let rec insertion_sort (lst : int list) : int list =
        match lst with
        | [] -> []
        | first :: tail ->
          let sorted_tail = insertion_sort tail in
          insert_at (List.length sorted_tail) first sorted_tail
      in
      insertion_sort (first :: sorted_tail)

let () =
  let tests : (int list * int list) list =
    [
      ([], []);
      ([5]; [5]);
      ([2; 4; 3; 0; 1; 5]; [0; 1; 2; 3; 4; 5]);
      ([2; 4; 3; 0; 1; 5; 6]; [6; 5; 4; 3; 2; 1; 0]);
      ([1; 0], [0; 1]);
      ([1; 1], [1; 1]);
      ([1; 2; 3], [1; 2; 3]);
      ([1; 0; 2], [0; 1; 2]);
      ([1; 2; 4], [1; 2; 4]);
      ([1; 2; 4; 6; 3], [1; 2; 3; 4; 6]);
      ([1; 2; 4; 6; 3; 5], [1; 2; 3; 4; 5; 6]);
    ]
  in
  List.iter (fun (array, result) -> assert (sort_array array = result)) tests;
  print_endline "SUCCESS"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of non-negative integers, return a coml of the given list after sorting, *)
(*     you will sort the given list in ascending order if the sum( first index value, last index value) is odd, *)
(*     or sort it in descending order if the sum( first index value, last index value) is even. *)
(*     Note: *)
(*     * don't change the given list. *)
(*     Examples: *)
(*     >>> sort_array [] *)
(*     [] *)
(*     >>> sort_array [5] *)
(*     [5] *)
(*     >>> sort_array [2; 4; 3; 0; 1; 5] *)
(*     [0; 1; 2; 3; 4; 5] *)
(*     >>> sort_array [2; 4; 3; 0; 1; 5; 6] *)
(*     [6; 5; 4; 3; 2; 1; 0] *)
