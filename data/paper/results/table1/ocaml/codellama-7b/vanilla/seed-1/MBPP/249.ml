let rec intersection_array (array_nums1 : int list) (array_nums2 : int list) : int list =
    let rec aux (acc : int list) (nums1 : int list * int list) : int list =
        match nums1 with
        | [], _ -> acc
        | _ -> aux (nums1 @ acc)
    in
    aux [] (Array.of_list nums1, Array.of_list nums2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the intersection of two lists. *)
