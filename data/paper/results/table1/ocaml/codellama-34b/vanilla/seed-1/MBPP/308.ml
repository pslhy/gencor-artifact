let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list =
    let rec aux nums1 nums2 n max_list =
        match nums1, nums2 with
        | [], [] -> max_list
        | x :: xs, y :: ys ->
            if x * y > (List.hd max_list * List.hd (List.tl max_list)) then
                aux xs ys n (x :: y :: max_list)
            else
                aux xs ys n max_list
        | _ -> max_list
    in
    if n > 2 then
        failwith "Input must be two lists"
    else if n = 0 then
        []
    else
        aux nums1 nums2 n max_list

let large_product = large_product [1; 2; 3; 4] [5; 6; 7; 8] 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the specified number of largest products from two given lists, selecting one factor from each list. *)
