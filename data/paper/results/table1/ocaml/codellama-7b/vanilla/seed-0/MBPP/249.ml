let rec intersection_array (array_nums1 : int list) (array_nums2 : int list) : int list =
  match array_nums1 with
  | [] -> []
  | head :: tail -> if List.mem head array_nums2 then head :: intersection array_nums tail array_nums2
    else intersection array_nums tail array_nums2

let () =
  assert (intersection_array [1; 2] [1; 3] = [1; 2; 3])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the intersection of two lists. *)
