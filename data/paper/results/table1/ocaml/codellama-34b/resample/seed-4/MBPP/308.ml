(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the specified number of largest products from two given lists, selecting one factor from each list. *)
let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list = 
    (* base case: if nums1 and nums2 are empty, return the empty list *)
    if nums1 = [] && nums2 = [] then
        []
    (* base case: if we have reached the desired number of products, return the empty list *)
    else if n <= 0 then
        []
    (* recursive case: find the largest product of an element from nums1 and an element from nums2 *)
    else
        let largest_product = List.fold_left (fun acc x -> if (x * List.hd nums2) > acc then x * List.hd nums2 else acc) 1 nums1 in
        (* add the largest product to the result list and recursively call the function on the remaining elements in nums1 and nums2 *)
        largest_product :: (large_product (List.tl nums1) (List.tl nums2) (n - 1))

