
let rec digitSum (s : string) : int =
    match s with
    | "" -> 0
    | (c::_) as s' ->
        if c.
        (match s' with
        | "" -> 0
        | _ -> digitSum (s'.[1..(String.length s') - 1]))
    |> ignore
    |> fun _ -> digitSum s'.[1..(String.length s') - 1]

(*
let _ =
    digitSum "" = 0;;

let _ =
    digitSum "abAB" = 131;;

let _ =
    digitSum "abcCd" = 67;;

let _ =
    digitSum "helloE" = 69;;

let _ =
    digitSum "woArBld" = 131;;

let _ =
    digitSum "aAaaaXa" = 153;;
*)

(*
let rec digitSum (s : string) : int =
    match s with
    | [] -> 0
    | c::cs ->
        if c >= 'A' && c <= 'Z' then
            c - 'A' + 1
        else if c >= 'a' && c <= 'z' then
            c - 'a' + 27
        else
            0
        + digitSum cs

let _ =
    digitSum "" = 0;;

let _ =
    digitSum "abAB" = 131;;

let _ =
    digitSum "abcCd" = 67;;

let _ =
    digitSum "helloE" = 69;;

let _ =
    digitSum "woArBld" = 131;;

let _ =
    digitSum "aAaaaXa" = 153;;
*)

(*
let rec digitSum (s : string) : int =
    match s with
    | [] -> 0
    | c::cs ->
        if Char.isUppercase c then
            Int.of_string (String.make 1 c)
        else
            0
        + digitSum cs

let _ =
    digitSum "" = 0;;

let _ =
    digitSum "abAB" = 131;;

let _ =
    digitSum "abcCd" = 67;;

let _ =
    digitSum "helloE" = 69;;

let _ =
    digitSum "woArBld" = 131;;

let _ =
    digitSum "aAaaaXa" = 153;;
*)

(*
let rec digitSum (s : string) : int =
    match s with
    | [] -> 0
    | c::cs ->
        if Char.isLowercase c then
            let rec loop acc = function
                | [] -> acc
                | d::ds ->
                    if Char.isUppercase d then
                        if acc = 0 then
                            1
                        else
                            acc + 1
                    else
                        acc
            loop 0 cs
        else
            0
        + digitSum cs

let _ =
    digitSum "" = 0;;

let _ =
    digitSum "abAB" = 131;;

let _ =
    digitSum "abcCd" = 67;;

let _ =
    digitSum "helloE" = 69;;

let _ =
    digitSum "woArBld" = 131;;

let _ =
    digitSum "aAaaaXa" = 153;;
*)

(*
let rec digitSum (s : string) : int =
    match s with
    | "" -> 0
    | _ ->
        let rec loop acc = function
            | [] -> acc
            | c::cs ->
                if Char.isLowercase c then
                    let rec loop2 acc = function
                        | [] -> acc
                        | d::ds ->
                            if Char.isUppercase d then
                                if acc = 0 then
                                    1
                                else
                                    acc + 1
                            else
                                acc
                    loop 0 cs
                else
                    acc
        loop 0 s

let _ =
    digitSum "" = 0;;

let _ =
    digitSum "abAB" = 131;;

let _ =
    digitSum "abcCd" = 67;;

let _ =
    digitSum "helloE" = 69;;

let _ =
    digitSum "woArBld" = 131;;

let _ =
    digitSum "aAaaaXa" = 153;;
*)

(*
let rec digitSum (s : string) : int =
    match s with
    | "" -> 0
    | _ ->
        let rec loop acc = function
            | [] -> acc
            | c::cs ->
                if Char.isLowercase c then
                    let rec loop2 acc = function
                        | [] -> acc
                        | d::ds ->
                            if Char.isUppercase d then
                                if acc = 0 then
                                    1
                                else
                                    acc + 1
                            else
                                acc
                    loop 0 cs
                else
                    acc
        match s with
        | "" -> 0
        | _ ->
            let rec loop acc = function
                | [] -> acc
                | c::cs ->
                    if Char.isUppercase c then
                        1 + loop acc cs
                    else
                        acc
            loop 0 s

let _ =
    digitSum "" = 0;;

let _ =
    digitSum "abAB" = 131;;

let _ =
    digitSum "abcCd" = 67;;

let _ =
    digitSum "helloE" = 69;;

let _ =
    digitSum "woArBld" = 131;;

let _ =
    digitSum "aAaaaXa" = 153;;
*)

(*
let rec digitSum (s : string) : int =
    match s with
    | "" -> 0
    | _ ->
        (match s with
        | "" -> 0
        | _ ->


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Task *)
(*     Write a function that takes a string as input and returns the sum of the upper characters only' *)
(*     ASCII codes. *)
(*     Examples: *)
(*     >>> digitSum "" *)
(*     0 *)
(*     >>> digitSum "abAB" *)
(*     131 *)
(*     >>> digitSum "abcCd" *)
(*     67 *)
(*     >>> digitSum "helloE" *)
(*     69 *)
(*     >>> digitSum "woArBld" *)
(*     131 *)
(*     >>> digitSum "aAaaaXa" *)
(*     153 *)
