
let rec get_Char (strr : string) : string =
    match strr with
        | "" -> ""
        | strrr ->
            let remainder : int =
                let base : int = Char.code strrr.[0]
                List.fold_left
                    (fun acc curr -> ((acc + curr) mod 26) + '0' - '0')
                    (0)
                    (List.map (fun curr -> Char.code curr) (List.rev (String.to_seq strrr)))
            in
            String.make 1 (Char.chr (((base + (Char.code strrr.[0]) - '0' + 1) mod 26)))
            ^ get_Char (String.sub strr 1 (String.length strr - 1))
     
    ^ (Printf.sprintf "The character is : %c" get_Char "modb";!
            Printf.sprintf "The ASCII value of the character is : %i" (Char.code get_Char)(Printf.sprintf
                "The remainder of calculating the character made by adding the ASCII values of all characters of given string is : %i"
                (Char.code get_Char);
            get_Char "modb";
        Printf.sprintf "The ASCII value of the character is : %i" (Char.code get_Char))
    (Printf.sprintf
        "The character is : %c"
        get_Char
    );
    (Printf.sprintf
        "The ASCII value of the character is : %i"
        (Char.code get_Char)
    );
    Printf.sprintf
        "The remainder of calculating the character made by adding the ASCII values of all characters of given string is : %i"
        ((Char.code get_Char
            + (Char.code strrr.[0])
            - '0'
            + 1) mod 26)
            Printf.sprintf "The character is : %c" (Char.chr 
                ((Char.code get_Char + (Char.code strrr.[0]) - '0' + 1) mod 26)
        );
            Printf.sprintf "The ASCII value of the character is : %i"
                (Char.code
                    (Char.chr
                        ((Char.code get_Char + (Char.code strrr.[0]) - '0' + 1) mod 26)
                );
                Printf.sprintf
                    "The character is : %c"
                    (Char.chr ((Char.code get_Char + (Char.code strrr.[0]) - '0' + 1) mod 26));
                Printf.sprintf
                    "The ASCII value of the character is : %i"
                    (Char.code
                        (Char.chr
                            ((Char.code get_Char + (Char.code strrr.[0]) - '0' + 1) mod 26));
                    Printf.sprintf
                        "The character is : %c"
                        (Char.chr
                            ((Char.code get_Char + (Char.code strrr.[0]) - '0' + 1) mod 26));
                    Printf.sprintf
                        "The ASCII value of the character is : %i"
                        (Char.code
                            (Char.chr
                                ((Char.code get_Char + (Char.code strrr.[0]) - '0' + 1) 
             mod 26));
                    Printf.sprintf
                        "The character is : %c"
                        (Char.chr
                            ((Char.code get_Char + (Char.code strrr.[0]) - '0' + 1) mod 26)));
                    Printf.sprintf
                        "The ASCII value of the character is : %i"
                        (Char.code
                            (Char.chr
                                ((Char.code get_Char + (Char.code strrr.[0]) - '0' + 1)
                        mod 26)))
                            |> print_endline
                              print_char (Char.chr (((Char.code get_Char + (Char.code strrr.[0]) - 0 - 1) mod 26)
  do_at_exit 
    ()










print_int (((Char.code get_Char + (Char.code strrr.[0]) - 0 - 1) mod 26) + 0 - 0)
    Printf.sprintf "The character is : %c" (Char.chr ((Char.code get_Char + (Char.code strrr.[0]) - 0 - 1) mod 26))
    Printf.sprintf "The ASCII value of the character is : %i" (Char.code (Char.chr
        ((Char.code get_Char + (Char.code strrr.[0]) - 0 - 1)
    mod 26)))











    ))









print_string (get_Char " modb")
print_string (Char.chr (((Char.code get_Char + (Char.code strrr.[0]) - 0 - 1) mod 26) Printf.sprintf
    "The character is : %c"
    (Char.chr ((Char.code get_Char + (Char.code strrr.[0]) - 0 - 1) mod 26))
Printf.sprintf
    "The ASCII value of the character is : %i"
    (Char.code (Char.chr
    ((Char.code get_Char + (Char.code strrr.[0]) - 0 - 1)
mod 26)))
    (Char.chr ((Char.code get_Char + (Char.code strrr.[0]) - 0 - 1) mod 26)
        Printf.sprintf
            "The character is : %c"
            (Char.chr ((Char.code get_Char + (Char.code strrr.[0]) - 0 - 1) mod 26)))
            Printf.sprintf
                "The ASCII value of the character is : %i"
                (Char.code (Char.chr
                    ((Char.code get_Char + (Char.code strrr.[0]) - 0 - 1) mod 26)))
                    (Char.chr ((Char.code get_Char + (Char.code strrr.[0]) - 0 - 1) mod 26))
                        Printf.sprintf
                            "The character is : %c"
                            (Char.chr ((Char.code get_Char + (Char.code strrr.[0]) - 0 - 1) mod 26))
                            Printf.sprintf
                                "The ASCII value of the character is : %i"
                                (Char.code (Char.chr
                                    ((Char.code get_Char + (Char.code strrr.[0]) - 0 - 1) mod 26)))
                                    (Char.chr ((Char.code get_Char + (Char.code strrr.[0]) - 0 - 1) mod 26)))
                                        Printf.sprintf
        "The character is : %c"
        (Char.chr ((Char.code get_Char + (Char.code strrr.[0]) - 0 - 1) mod 26))
        Printf.sprintf
            "The ASCII value of the character is : %i"
            (Char.code (Char.chr
                ((Char.code get_Char + (Char.code strrr.[0]) - 0 - 1) mod 26)))
                (Char.chr ((Char.code get_Char + (Char.code strrr.[0]) - 0 - 1) mod 26))
                    Printf.sprintf
                        "The character is : %c"
                        (Char.chr ((Char.code get_Char + (Char.code strrr.[0]) - 0 - 1) mod 26))
                        Printf.sprintf
                            "The ASCII value of the character is : %i"
                            (Char.code (Char.chr
                                ((Char.code get_Char + (Char.code strrr.[0]) - 0 - 1) mod 26)))
                                (Char.chr ((Char.code get_Char

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26. *)
