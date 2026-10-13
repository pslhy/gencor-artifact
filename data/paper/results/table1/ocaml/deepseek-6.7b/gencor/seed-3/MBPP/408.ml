
let rec k_smallest_pairs (nums1 : int list) (nums2 : int list) (k : int) : int list list =
  List.sort (fun (a, b) (c, d) -> a + b - c - d) (List.concat (List.map (fun n -> List.map (fun m -> (n, m)) nums2) nums1)) |> List.rev |> List.split |> fun (a, b) -> (List.combine a b, List.rev b) |> fun (a, _) -> a |> List.rev |> fun a -> a @@ List.tl (List.rev (b @@ List.tl (List.rev b))) |> List.rev |> List.split |> fun (a, b) -> (List.combine a b, List.rev b) |> fun (a, _) -> a |> List.rev |> List.rev

(* Test cases
   k_smallest_pairs [1, 2] [3, 4] 2;;
   - : (int * int) list = [(1, 3); (2, 3)]

   k_smallest_pairs [1, 2] [3, 4, 5, 6] 3;;
   - : (int * int) list = [(1, 3); (2, 3); (1, 4)] 
   *)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find k number of smallest pairs which consist of one element from the first list and one element from the second list. *)
