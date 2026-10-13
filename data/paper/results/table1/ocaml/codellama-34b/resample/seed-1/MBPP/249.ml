(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the intersection of two lists. *)
let rec intersection_array (array_nums1 : int list) (array_nums2 : int list) : int list =
    let rec aux nums1 nums2 common =
        match nums1 with
        | [] -> common
        | hd::tl -> 
            if List.mem hd nums2 then aux tl (hd::common) else aux tl common
    in
    List.rev (aux array_nums1 array_nums2 [])

