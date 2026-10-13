
let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list =
    if nums1 = [] || nums2 = [] || n <= 0 then []
    else
        let l1 = List.map (fun x -> List.map (fun y -> x * y) nums2) nums1
        in
        let l2 = List.concat l1
        in
        let res = List.sort (List.rev_map compare l2) 
        in 
        List.rev_map fst (List.rev (List.tl (List.tl res)))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the specified number of largest products from two given lists, selecting one factor from each list. *)
