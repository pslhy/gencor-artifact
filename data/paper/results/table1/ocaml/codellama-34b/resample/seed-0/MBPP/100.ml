(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the next smallest palindrome of a specified integer, returned as an integer. *)
let rec next_smallest_palindrome (num : int) : int =
    if is_palindrome num then num
    else
        let incremented = num + 1
        if is_palindrome incremented then incremented
        else next_smallest_palindrome incremented

let is_palindrome (num : int) : bool =
    let str_num = string_of_int num
    let len = String.length str_num
    let is_palindrome_from_index i =
        i > len / 2 || str_num.[i] = str_num.[len - i - 1]
    List.for_all is_palindrome_from_index [0..len-1]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec next_smallest_palindrome (num : int) : int =
    if is_palindrome num then num
    else
        let incremented = num + 1
        if is_palindrome incremented then incremented
        else next_smallest_palindrome incremented

let is_palindrome (num : int) : bool =
    let str_num = string_of_int num
    let len = String.length str_num
    let is_palindrome_from_index i =
        i >= len / 2 || str_num.[i] = str_num.[len - i - 1]
    List.for_all is_palindrome_from_index [0..len-1]

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec next_smallest_palindrome (num : int) : int =
    if is_palindrome num then num
    else
        let incremented = num + 1 in
        if is_palindrome incremented then incremented
        else next_smallest_palindrome incremented

let is_palindrome (num : int) : bool =
    let str_num = string_of_int num in
    let len = String.length str_num in
    let is_palindrome_from_index i =
        i >= len / 2 || str_num.[i] = str_num.[len - i - 1] in
    List.for_all is_palindrome_from_index [0..len-1]

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:8: Unbound value "is_palindrome" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec next_smallest_palindrome (num : int) : int =
    if is_palindrome num then num
    else
        let incremented = num + 1 in
        if is_palindrome incremented then incremented
        else next_smallest_palindrome incremented

let is_palindrome (num : int) : bool =
    let str_num = string_of_int num in
    let len = String.length str_num in
    let is_palindrome_from_index i =
        i >= len / 2 || str_num.[i] = str_num.[len - i - 1] in
    List.for_all is_palindrome_from_index [0..len-1]

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:8: Unbound value "is_palindrome" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec next_smallest_palindrome (num : int) : int =
    if is_palindrome num then num
    else
        let incremented = num + 1 in
        if is_palindrome incremented then incremented
        else next_smallest_palindrome incremented

let is_palindrome (num : int) : bool =
    let str_num = string_of_int num in
    let len = String.length str_num in
    let is_palindrome_from_index i =
        i >= len / 2 || str_num.[i] = str_num.[len - i - 1] in
    List.for_all is_palindrome_from_index [0..len-1]

