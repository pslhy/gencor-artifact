let rec max_sub_array_sum (a : int list) (size : int) : int =
    let acc = ref a.(0) in
    let mutable_a = Array.of_list a in
    for i = 0 to size - 1 do
        if mutable_a.(i) > !acc then
            acc := mutable_a.(i)
    done;
    !acc

let find_largest_contiguous_sublist (a : int list) : int =
    let size = List.length a in
    if size = 0 then 0 else
        let max_subarray_sum = ref(max_sub_array_sum a size) in
        for i = 1 to size - 1 do
            let temp = max_sub_array_sum a.(i) in
            if temp > !max_subarray_sum then
                max_subarray_sum := temp
        done;
        !max_subarray_sum


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the sum of the largest contiguous sublist in the given list. *)
