(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the sum of the largest contiguous sublist in the given list. *)
let rec max_sub_array_sum (a : int list) (size : int) : int =  
    let rec max_cross_array_sum (low : int) (high : int) : int =
        let mid = (low + high) / 2 in
        let mutable left_sum = min_int in
        let mutable sum = 0 in
        for i = mid downto low do
            sum <- sum + a.(i);
            if sum > left_sum then
                left_sum <- sum
        done;
        let mutable right_sum = min_int in
        sum <- 0;
        for i = mid + 1 to high do
            sum <- sum + a.(i);
            if sum > right_sum then
                right_sum <- sum
        done;
        left_sum + right_sum
    in
    let mutable max_so_far = min_int in
    let mutable max_ending_here = 0 in
    for i = 0 to size - 1 do
        max_ending_here <- max_ending_here + a.(i);
        if max_so_far < max_ending_here then
            max_so_far <- max_ending_here;
        if max_ending_here < 0 then
            max_ending_here <- 0
    done;
    max_so_far

let find_max_subarray_sum (a : int list) : int =
    max_sub_array_sum (Array.of_list a) (List.length a)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:13: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sub_array_sum (a : int list) (size : int) : int =  
    let rec max_cross_array_sum (low : int) (high : int) : int =
        let mid = (low + high) / 2 in
        let mutable left_sum = Int.min_int in
        let mutable sum = 0 in
        for i = mid downto low do
            sum <- sum + a.(i);
            if sum > left_sum then
                left_sum <- sum
        done;
        let mutable right_sum = Int.min_int in
        sum <- 0;
        for i = mid + 1 to high do
            sum <- sum + a.(i);
            if sum > right_sum then
                right_sum <- sum
        done;
        left_sum + right_sum
    in
    let mutable max_so_far = Int.min_int in
    let mutable max_ending_here = 0 in
    for i = 0 to size - 1 do
        max_ending_here <- max_ending_here + a.(i);
        if max_so_far < max_ending_here then
            max_so_far <- max_ending_here;
        if max_ending_here < 0 then
            max_ending_here <- 0
    done;
    max_so_far

let find_max_subarray_sum (a : int list) : int =
    max_sub_array_sum (Array.of_list a) (List.length a)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:13: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sub_array_sum (a : int list) (size : int) : int =  
    let rec max_cross_array_sum (low : int) (high : int) : int =
        let mid = (low + high) / 2 in
        let mutable left_sum = Min.int in
        let mutable sum = 0 in
        for i = mid downto low do
            sum <- sum + a.(i);
            if sum > left_sum then
                left_sum <- sum
        done;
        let mutable right_sum = Min.int in
        sum <- 0;
        for i = mid + 1 to high do
            sum <- sum + a.(i);
            if sum > right_sum then
                right_sum <- sum
        done;
        left_sum + right_sum
    in
    let mutable max_so_far = Min.int in
    let mutable max_ending_here = 0 in
    for i = 0 to size - 1 do
        max_ending_here <- max_ending_here + a.(i);
        if max_so_far < max_ending_here then
            max_so_far <- max_ending_here;
        if max_ending_here < 0 then
            max_ending_here <- 0
    done;
    max_so_far

let find_max_subarray_sum (a : int list) : int =
    max_sub_array_sum (Array.of_list a) (List.length a)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:13: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sub_array_sum (a : int list) (size : int) : int =  
    let rec max_cross_array_sum (low : int) (high : int) : int =
        let mid = (low + high) / 2 in
        let mutable left_sum = Int.min_int in
        let mutable sum = 0 in
        for i = mid downto low do
            sum <- sum + a.(i);
            if sum > left_sum then
                left_sum <- sum
        done;
        let mutable right_sum = Int.min_int in
        sum <- 0;
        for i = mid + 1 to high do
            sum <- sum + a.(i);
            if sum > right_sum then
                right_sum <- sum
        done;
        left_sum + right_sum
    in
    let mutable max_so_far = Int.min_int in
    let mutable max_ending_here = 0 in
    for i = 0 to size - 1 do
        max_ending_here <- max_ending_here + a.(i);
        if max_so_far < max_ending_here then
            max_so_far <- max_ending_here;
        if max_ending_here < 0 then
            max_ending_here <- 0
    done;
    max_so_far

let find_max_subarray_sum (a : int list) : int =
    max_sub_array_sum (Array.of_list a) (List.length a)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:13: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sub_array_sum (a : int list) (size : int) : int =  
    let rec max_cross_array_sum (low : int) (high : int) : int =
        let mid = (low + high) / 2 in
        let mutable left_sum = min_int in
        let mutable sum = 0 in
        for i = mid downto low do
            sum <- sum + a.(i);
            if sum > left_sum then
                left_sum <- sum
        done;
        let mutable right_sum = min_int in
        sum <- 0;
        for i = mid + 1 to high do
            sum <- sum + a.(i);
            if sum > right_sum then
                right_sum <- sum
        done;
        left_sum + right_sum
    in
    let mutable max_so_far = min_int in
    let mutable max_ending_here = 0 in
    for i = 0 to size - 1 do
        max_ending_here <- max_ending_here + a.(i);
        if max_so_far < max_ending_here then
            max_so_far <- max_ending_here;
        if max_ending_here < 0 then
            max_ending_here <- 0
    done;
    max_so_far

let find_max_subarray_sum (a : int list) : int =
    max_sub_array_sum (Array.of_list a) (List.length a)

