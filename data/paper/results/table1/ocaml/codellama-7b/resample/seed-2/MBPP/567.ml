(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether a specified list is sorted or not. *)
let rec issort_list (list1 : int list) : bool =
    match list1 with
        | [] -> false
        | (h::t) ->
            match t with
                | [] -> true
                | (h2::t2) ->
                    if h <= h2 then issort_list (h2::t2)
                    else false
end

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec issort_list (list1 : int list) : bool =
    match list1 with
        | [] -> true
        | (h::t) ->
            match t with
                | [] -> true
                | (h2::t2) ->
                    if h <= h2 then issort_list (h2::t2)
                    else false
end

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec issort_list (list1 : int list) : bool =
    match list1 with
    | [] -> true
    | (h::t) ->
        match t with
        | [] -> true
        | (h2::t2) ->
            if h <= h2 then issort_list (h2::t2)
            else false
end

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec issort_list (list1 : int list) : bool =
    match list1 with
    | [] -> true
    | (h::t) ->
        match t with
        | [] -> true
        | (h2::t2) ->
            if h <= h2 then issort_list (h2::t2)
            else false
end

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec issort_list (list1 : int list) : bool =
    match list1 with
    | [] -> true
    | (h::t) ->
        match t with
        | [] -> true
        | (h2::t2) ->
            if h <= h2 then issort_list (h2::t2)
            else false
end

