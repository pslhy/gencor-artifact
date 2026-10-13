let rec count_same_pair (nums1 : int list) (nums2 : int list) : int =
  match nums1, nums2 with
  | [], [] -> 0
  | h1 :: t1, h2 :: t2 -> if h1 = h2 then 1 + count_same_pair t1 t2 else count_same_pair t1 t2
  | _, _ -> failwith "Lists have different lengths."

let count_same_indices (nums1 : int list) (nums2 : int list) : int list =
  let rec helper (nums1 : int list) (nums2 : int list) (acc : int list) : int list =
    match nums1, nums2 with
    | [], [] -> acc
    | h1 :: t1, h2 :: t2 ->
        if h1 = h2 then
          helper t1 t2 (h1 :: acc)
        else
          helper t1 t2 acc
    | _, _ -> failwith "Lists have different lengths."
  in
  helper nums1 nums2 []

let%test "count_same_pair" = count_same_pair [1; 2; 3] [4; 5; 6] = 0

let%test "count_same_pair - equal" = count_same_pair [1; 2; 3] [1; 2; 3] = 3

let%test "count_same_pair - different" = count_same_pair [1; 2; 3] [2; 3; 4] = 2

let%test "count_same_indices - empty" = count_same_indices [] [] = []

let%test "count_same_indices - unequal" = count_same_indices [1; 2; 3] [4; 5; 6] = []

let%test "count_same_indices - equal" = count_same_indices [1; 2; 3] [1; 2; 3] = [1; 2; 3]

let%test "count_same_indices - different" = count_same_indices [1; 2; 3] [2; 3; 4] = [2; 3]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     The input is defined as two lists of the same length. Write a function to count indices where the lists have the same values. *)
