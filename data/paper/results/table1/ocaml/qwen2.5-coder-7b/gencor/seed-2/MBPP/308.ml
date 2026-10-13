
let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list = 
    let rec find_largest_pair l1 l2 max assoc = 
        match (l1,l2) with 
        | [], [] | [], _ | _, [] -> assoc
        | n1::ns1, n2::ns2 -> 
            let product = n1 * n2 in
            if product > max 
            then find_largest_pair ns1 ns2 product [(n1,n2)] 
            else find_largest_pair ns1 ns2 max (product :: assoc)
    in 
    let sorted_malloc = List.sort compare in
    let rec pick_max nums product max n res = 
        match nums with 
        | [] | _::[] when n = 0 -> res 
        | num::rest -> 
            let new_max = num * product in 
            if new_max > max 
            then pick_max rest new_max new_max (n-1) ((num,product)::res) 
            else pick_max rest new_max max n res 
    in 
    let (_ ,allProducts) = find_largest_pair nums1 nums2 0 [] in 
    let final_list = List.sort compare allProducts in 
    let rec get_nlargest res n curr_list sorted_malloc = 
        match (n, curr_list, sorted_malloc) with 
        | 0, _, _ -> res 
        | _ , [], _ -> res
        | _ , (num1, num2)::rest, (curr1,_ )::rest1 when num1 * num2 < curr1 * curr1 -> 
            get_nlargest (((curr1,curr1))::res) (n-1) rest1 sorted_malloc
        | _ , (num1, num2)::rest, _  -> 
            get_nlargest ((num1,num2)::res) (n-1) rest sorted_malloc
    in 
    get_nlargest [] n final_list sorted_malloc

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the specified number of largest products from two given lists, selecting one factor from each list. *)
