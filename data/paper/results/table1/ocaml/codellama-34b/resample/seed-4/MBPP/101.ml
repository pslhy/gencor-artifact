(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the kth element in the given list using 1-based indexing. *)
let rec kth_element (arr : int list) (k : int) : int = 
    let n = List.length arr in
    if k <= 0 || k > n then 
        raise (InvalidArgumentException "k") 
    else 
        let rec aux arr k i =
            if i = k then arr.[i-1]
            else 
                let recursion = aux arr k i + 1
                if recursion <= n then recursion else raise NotFound
        in
        aux arr k 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:17: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec kth_element (arr : int list) (k : int) : int =
    let n = List.length arr in
    if k < 0 || k > n then raise (InvalidArgumentException("k"))
    else
        let rec aux arr k i =
            if i = k then arr.(i - 1)
            else
                try aux arr k (i + 1)
                with NotFound -> raise NotFound in
        Try
            aux arr k 0
        with NotFound -> raise NotFound

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:17: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec kth_element (arr : int list) (k : int) : int =
    let n = List.length arr in
    if k < 0 || k > n then raise (InvalidArgumentException("k"))
    else
        let rec aux arr k i =
            if i = k then arr.(i - 1)
            else
                match aux arr k (i + 1) with
                | exception NotFound -> raise NotFound
                | x -> x
            in
            Try
                aux arr k 0
            with NotFound -> raise NotFound

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:21: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec kth_element (arr : int list) (k : int) : int =
    let n = List.length arr in
    if k < 0 || k > n then raise (InvalidArgumentException("k"))
    else
        let rec aux arr k i =
            if i = k then arr.(i - 1)
            else
                match Try (aux arr k (i + 1)) with
                | exception NotFound -> raise NotFound
                | x -> x
            in
            Try (aux arr k 0)

