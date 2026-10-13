(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the sum of the largest contiguous sublist in the given list. *)
let rec max_sub_array_sum (a : int list) (size : int) : int = 
    let rec max_crossing_sum (low : int) (mid : int) (high : int) : int = 
        let mutable left_sum = min_int 
        and mutable sum = 0 in
        for i = mid downto low do
            sum <- sum + a.(i)
            if sum > left_sum then left_sum <- sum
        done;
        let mutable right_sum = min_int 
        and sum = 0 in
        for i = (mid + 1) to high do
            sum <- sum + a.(i)
            if sum > right_sum then right_sum <- sum
        done;
        left_sum + right_sum
    and max_subarray_recursive (low : int) (high : int) : int = 
        if high == low then a.(low)
        else 
            let mid = (low + high) / 2 in
            max (max (max_subarray_recursive low mid) (max_subarray_recursive (mid + 1) high)) (max_crossing_sum low mid high)
    in
    max_subarray_recursive 0 (size - 1)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:13: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sub_array_sum (a : int list) (size : int) : int = 
    let rec max_crossing_sum (low : int) (mid : int) (high : int) : int = 
        let mutable left_sum = -max_int 
        and mutable sum = 0 in
        for i = mid downto low do
            sum <- sum + List.nth a i
            if sum > left_sum then left_sum <- sum
        done;
        let mutable right_sum = -max_int 
        and sum = 0 in
        for i = (mid + 1) to high do
            sum <- sum + List.nth a i
            if sum > right_sum then right_sum <- sum
        done;
        left_sum + right_sum
    and max_subarray_recursive (low : int) (high : int) : int = 
        if high == low then List.nth a low
        else 
            let mid = (low + high) / 2 in
            max (max (max_subarray_recursive low mid) (max_subarray_recursive (mid + 1) high)) (max_crossing_sum low mid high)
    in
    max_subarray_recursive 0 (size - 1)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:13: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sub_array_sum (a : int list) (size : int) : int = 
    let rec max_crossing_sum (low : int) (mid : int) (high : int) : int = 
        let mutable left_sum = Int.min_int 
        and mutable sum = 0 in
        for i = mid downto low do
            sum <- sum + List.nth a i
            if sum > left_sum then left_sum <- sum
        done;
        let mutable right_sum = Int.min_int 
        and sum = 0 in
        for i = (mid + 1) to high do
            sum <- sum + List.nth a i
            if sum > right_sum then right_sum <- sum
        done;
        left_sum + right_sum
    and max_subarray_recursive (low : int) (high : int) : int = 
        if high == low then List.nth a low
        else 
            let mid = (low + high) / 2 in
            max (max (max_subarray_recursive low mid) (max_subarray_recursive (mid + 1) high)) (max_crossing_sum low mid high)
    in
    max_subarray_recursive 0 (size - 1)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:13: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sub_array_sum (a : int list) (size : int) : int = 
    let rec max_crossing_sum (low : int) (mid : int) (high : int) : int = 
        let mutable left_sum = min_int 
        and mutable sum = 0 in
        for i = mid downto low do
            sum <- sum + a.(i)
            if sum > left_sum then left_sum <- sum
        done;
        let mutable right_sum = min_int 
        and sum = 0 in
        for i = (mid + 1) to high do
            sum <- sum + a.(i)
            if sum > right_sum then right_sum <- sum
        done;
        left_sum + right_sum
    and max_subarray_recursive (low : int) (high : int) : int = 
        if high == low then a.(low)
        else 
            let mid = (low + high) / 2 in
            max (max (max_subarray_recursive low mid) (max_subarray_recursive (mid + 1) high)) (max_crossing_sum low mid high)
    in
    max_subarray_recursive 0 (size - 1)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:13: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sub_array_sum (a : int list) (size : int) : int = 
    let rec max_crossing_sum (low : int) (mid : int) (high : int) : int = 
        let mutable left_sum = Int.min_int 
        and mutable sum = 0 in
        for i = mid downto low do
            sum <- sum + a.(i)
            if sum > left_sum then left_sum <- sum
        done;
        let mutable right_sum = Int.min_int 
        and sum = 0 in
        for i = (mid + 1) to high do
            sum <- sum + a.(i)
            if sum > right_sum then right_sum <- sum
        done;
        left_sum + right_sum
    and max_subarray_recursive (low : int) (high : int) : int = 
        if high == low then a.(low)
        else 
            let mid = (low + high) / 2 in
            max (max (max_subarray_recursive low mid) (max_subarray_recursive (mid + 1) high)) (max_crossing_sum low mid high)
    in
    max_subarray_recursive 0 (size - 1)

