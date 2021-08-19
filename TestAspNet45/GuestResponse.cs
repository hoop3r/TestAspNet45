using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace TestAspNet45
{
    public class GuestResponse
    {
        [Required(ErrorMessage = "Введите свое имя")]
        public string Name { get; set; }
        [Required(ErrorMessage = "Введите свою почту")]
        public string Email { get; set; }
        [Required(ErrorMessage = "Введите свой номер телефона")]
        public string Phone { get; set; }
        [Required(ErrorMessage = "Пожалуйста укажите, придете ли вы ")]
        public bool? WillAttend { get; set; }
    }
}