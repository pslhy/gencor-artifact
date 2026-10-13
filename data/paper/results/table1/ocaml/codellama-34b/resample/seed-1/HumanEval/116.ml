(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     In this Kata, you have to sort a list of non-negative integers according to *)
(*     number of ones in their binary representation in ascending order. *)
(*     For similar number of ones, sort based on decimal value. *)
(*     It must be implemented like this: *)
(*     >>> sort_array [1; 5; 2; 3; 4] *)
(*     [1; 2; 3; 4; 5] *)
(*     >>> sort_array [(-2); (-3); (-4); (-5); (-6)] *)
(*     [(-6); (-5); (-4); (-3); (-2)] *)
(*     >>> sort_array [1; 0; 2; 3; 4] *)
(*     [0; 1; 2; 3; 4] *)
let rec sort_array (arr : int list) : int list =
    let rec compare x y =
        let num_ones x =
            let rec count acc bit = function
                | 0 -> acc
                | n -> count (if bit land 1 = 1 then acc + 1 else acc) (bit >>> 1) (n - 1)
            in
            count 0 x 32
        in
        let x_ones = num_ones x in
        let y_ones = num_ones y in
        if x_ones = y_ones then
            x - y
        else
            x_ones - y_ones
    in
    arr |> List.sort compare

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:77: Unbound value "(>>>)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_array (arr : int list) : int list =
    let compare x y =
        let num_ones x =
            let rec count acc bit = function
                | 0 -> acc
                | n -> count (if bit land 1 = 1 then acc + 1 else acc) (bit >>> 1) (n - 1)
            in
            count 0 x 32
        in
        let x_ones = num_ones x in
        let y_ones = num_ones y in
        if x_ones = y_ones then
            x - y
        else
            x_ones - y_ones
    in
    List.sort compare arr

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:77: Unbound value "(>>>)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_array (arr : int list) : int list =
    let compare x y =
        let num_ones x =
            let rec count acc bit = function
                | 0 -> acc
                | n when n mod 2 = 0 -> count (if bit land 1 = 1 then acc + 1 else acc) (bit >>> 1) (n - 1)
                | _ -> count (if bit land 1 = 1 then acc + 1 else acc) (bit >>> 1) (n - 1)
            in
            count 0 x 32
        in
        let x_ones = num_ones x in
        let y_ones = num_ones y in
        if x_ones = y_ones then
            x - y
        else
            x_ones - y_ones
    in
    List.sort compare arr

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:94: Unbound value "(>>>)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_array (arr : int list) : int list =
    let compare x y =
        let num_ones x =
            let rec count acc bit = function
                | 0 -> acc
                | n when n mod 2 = 0 -> count (if bit land 1 = 1 then acc + 1 else acc) (bit lsr 1) (n - 1)
                | _ -> count (if bit land 1 = 1 then acc + 1 else acc) (bit lsr 1) (n - 1)
            in
            count 0 x 32
        in
        let x_ones = num_ones x in
        let y_ones = num_ones y in
        if x_ones = y_ones then
            x - y
        else
            x_ones - y_ones
    in
    List.sort compare arr

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:85: Unbound value "n" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_array (arr : int list) : int list =
    let compare x y =
        let num_ones x =
            let rec count acc bit = function
                | 0 -> acc
                | n -> count (if bit land 1 = 1 then acc + 1 else acc) (bit lsr 1) (n - 1)
            in
            count 0 x 32
        in
        let x_ones = num_ones x in
        let y_ones = num_ones y in
        if x_ones = y_ones then
            x - y
        else
            x_ones - y_ones
    in
    List.sort compare arr

